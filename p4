import array as arr
n=int(input("Enter the number of the students: "))
a=arr.array('f',[])

for i in range (n):
    e=float(input("Enter the percentage of the students: "))
    a.append(e)
print("The array before sorting: ",a)

#selection sort
for i in range (n):
    for j in range (i+1,n):
        if a[i]>a[j]:
            temp=a[i]
            a[i]=a[j]
            a[j]=temp
print("The array after the selection sort is: ",a)

#Bubble sort
for i in range (n):
    for j in range(n-1):
        if a[j]>a[j+1]:
            temp=a[j]
            a[j]=a[j+1]
            a[j+1]=temp
print("The array after the bubble sort is : ",a)

#display the top 5 scores
b=a[-5:]
for i in range(5):
    for j in range (i+1,5):
        if b[i]<b[j]:
            temp=b[i]
            b[i]=b[j]
            b[j]=temp
print("The top 5 scores are: ",b)
