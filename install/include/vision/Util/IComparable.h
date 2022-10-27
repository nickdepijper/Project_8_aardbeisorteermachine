#pragma once
template<typename T1>
class IComparable {
public:
	virtual int Compare(T1& t1, T1& t2) = 0;
};