#quick sort
def partition (a,low,high):
    pivot=a[high]
    i=low-1
    for j in range (low,high):
        if (a[j]<=pivot):
            i=i+1
            (a[i],a[j])=(a[j],a[i])
    (a[i+1],a[high])=(a[high],a[i+1])
    return i+1
def qs (a,low ,high):
    if (low<high):
        pivot=partition (a,low,high)
        qs(a,low,pivot-1)
        qs(a,pivot+1,high)

import array as arr
n=int(input("Enter the numbers of the students: "))
a=arr.array('f',[])

for i in range (n):
    e= float(input("Enter the percentage of the students: "))
    a.append(e)
print("The array before sorting: ",a)
qs (a,0,n-1)
print("The array after the quick sort: ",a)

#Display the top 5 percentages
b=a[-5:]
for i in range (5):
    for j in range (i+1,5):
        if (b[i]<b[j]):
            temp=b[i]
            b[i]=b[j]
            b[j]=temp
print("The top 5 percentages of the students are: ",b)
