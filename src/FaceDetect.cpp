// -*- C++ -*-
/*!
 * @file  FaceDetect.cpp
 * @brief ModuleDescription
 * @date $Date$
 *
 * $Id$
 */

#include "FaceDetect.h"
using namespace std;
// Module specification
// <rtc-template block="module_spec">
static const char* facedetect_spec[] =
  {
    "implementation_id", "FaceDetect",
    "type_name",         "FaceDetect",
    "description",       "ModuleDescription",
    "version",           "1.0.0",
    "vendor",            "VenderName",
    "category",          "Category",
    "activity_type",     "PERIODIC",
    "kind",              "DataFlowComponent",
    "max_instance",      "1",
    "language",          "C++",
    "lang_type",         "compile",
    // Configuration variables
    "conf.default.view", "0:OFF",
    // Widget
    "conf.__widget__.view", "radio",
    // Constraints
    "conf.__constraints__.view", "(1:ON,0:OFF)",
    ""
  };
// </rtc-template>

/*!
 * @brief constructor
 * @param manager Maneger Object
 */
FaceDetect::FaceDetect(RTC::Manager* manager)
    // <rtc-template block="initializer">
  : RTC::DataFlowComponentBase(manager),
    m_inputIn("input", m_input)

    // </rtc-template>
{
}

/*!
 * @brief destructor
 */
FaceDetect::~FaceDetect()
{
}



RTC::ReturnCode_t FaceDetect::onInitialize()
{
  // Registration: InPort/OutPort/Service
  // <rtc-template block="registration">
  // Set InPort buffers
  addInPort("input", m_inputIn);
  
  // Set OutPort buffer
  
  // Set service provider to Ports
  
  // Set service consumers to Ports
  
  // Set CORBA Service Ports
  
  // </rtc-template>

  // <rtc-template block="bind_config">
  // Bind variables and configuration variable
  bindParameter("view", m_view, "0:OFF");
  // </rtc-template>
  
  return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t FaceDetect::onFinalize()
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t FaceDetect::onStartup(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t FaceDetect::onShutdown(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/


RTC::ReturnCode_t FaceDetect::onActivated(RTC::UniqueId ec_id)
{
	m_input.width = 0;
	m_input.height = 0;
	//viewer flag
	prevflg = 0;

	cascadeName = "/usr/local/opencv2.4.10/share/OpenCV/haarcascades/haarcascade_frontalface_default.xml";
	if(!cascade.load(cascadeName))
		return RTC::RTC_ERROR;	
  return RTC::RTC_OK;
}


RTC::ReturnCode_t FaceDetect::onDeactivated(RTC::UniqueId ec_id)
{
	inputFrame.release();
	FaceFrame.release();
	grayFrame.release();
	fflg = false;
	//バッファの初期化
	while(m_inputIn.isNew()) m_inputIn.read();

	switch_viewer(FaceFrame, m_inputIn.getName(), prevflg, 0);
	return RTC::RTC_OK;
}


RTC::ReturnCode_t FaceDetect::onExecute(RTC::UniqueId ec_id)
{
  // Check input image is new
  if (!m_inputIn.isNew())
  {	
	return RTC::RTC_OK;
  }
  m_inputIn.read();

	//画像が空、または画像のサイズ、チャンネルが変化
	m_input>>inputFrame;

	cv::cvtColor(inputFrame, grayFrame, CV_BGR2GRAY);

	cascade.detectMultiScale(grayFrame, faces, 1.1, 2, CV_HAAR_SCALE_IMAGE, cv::Size(30, 30));
	std::vector<cv::Rect>::const_iterator r = faces.begin();

	for(; r != faces.end(); ++r)
	{
		cv::Point center;
		int radius;
		center.x = cv::saturate_cast<int>((r->x + r->width*0.5));
		center.y = cv::saturate_cast<int>((r->y + r->height*0.5));
		radius = cv::saturate_cast<int>((r->width + r->height)*0.25);
		cv::circle( inputFrame, center, radius, cv::Scalar(80,80,255), 3, 8, 0 );
	}

	//viwer
	switch_viewer(inputFrame, m_inputIn.getName(), prevflg, m_view);



  return RTC::RTC_OK;
}


/*
RTC::ReturnCode_t FaceDetect::onAborting(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t FaceDetect::onError(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t FaceDetect::onReset(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t FaceDetect::onStateUpdate(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t FaceDetect::onRateChanged(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

void FaceDetect::switch_viewer(const cv::Mat& src, const std::string name, int& prev, const int curr)
{
	if(curr != prev)	//flg changed
	{	
		if(prev == 1)
		{		
			prev = 0;
			cout<<name<<" viewer OFF"<<endl;
			cv::destroyWindow(name);
		}
		else
		{		
			prev = 1;
			cout<<name<<" viewer ON"<<endl;
			cv::namedWindow(name, CV_WINDOW_AUTOSIZE);
		}
	}	
	if(curr == 1){
		#if (!defined WIN32) || (!defined WIN64)
   			cvStartWindowThread();
		#endif
		cv::imshow(name,src);
	}
}

extern "C"
{
 
  void FaceDetectInit(RTC::Manager* manager)
  {
    coil::Properties profile(facedetect_spec);
    manager->registerFactory(profile,
                             RTC::Create<FaceDetect>,
                             RTC::Delete<FaceDetect>);
  }
  
};


