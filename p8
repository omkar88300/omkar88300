#include<iostream>
using namespace std;
 
class Student
{
	int roll;
	Student *next;
public:
	Student()
	{
		roll=0;
		next=NULL;
	}
	Student(int r)
	{
		roll=r;
		next=NULL;
	}
	friend class Set;
};
 
class Set
{
	int total,roll;
	Student *head;
public:
	Set()
	{
		head=NULL;
	}
	void create(int roll);
	void insert();
	void display();
	Set both(Set b);
	Set either();
	Set vanillaOnly();
	Set butterscotchOnly();
	Set neither();
};
 
void Set::create(int roll)
{
	Student *p=new Student(roll);
	if(head==NULL)
	{
		head=p;
	}
	else
	{
		Student *temp=head;
		while(temp->next!=NULL)
		{
			temp=temp->next;
		}
		temp->next=p;
	}
}
void Set::insert()
{
	cin>>total;
	cout<<"Enter all the roll no.s\n";
	for(int i=0;i<total;i++)
	{
		cin>>roll;
		create(roll);
	}
}
 
void Set::display()
{
	cout<<"Set is:\n";
	Student *p=head;
	while(p!=NULL)
	{
		cout<<p->roll<<" ";
		p=p->next;
	}
	cout<<endl;
}
 
Set Set::both(Set b)
{
	cout<<"Roll No. of students who like both Vanilla and ButterS\n";
	Student *temp=head;
	Student *tempb=b.head;
	while(temp->next!=NULL || tempb->next!=NULL)
    {
            if(temp->roll==tempb->roll)
            {
                cout<<tempb->roll<<"\t";
            }
            tempb=tempb->next;
            temp=temp->next;
    }
}
int main()
{
	Set b,v,s;
	cout<<"Enter the total number of students\n";
	s.insert();
	s.display();
 
	cout<<"Enter the total number of students who like Vanilla.\n";
	v.insert();
	v.display();
 
	cout<<"Enter the total number of students who like Butterscotch.\n";
	b.insert();
	b.display();
 
	b.both(v);
return 0;
}
