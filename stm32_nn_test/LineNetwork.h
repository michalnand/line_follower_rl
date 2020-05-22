#ifndef _LineNetwork_H_
#define _LineNetwork_H_


#include <ModelInterface.h>

class LineNetwork : public ModelInterface
{
	public:
		 LineNetwork();
		 void forward();
};


#endif
