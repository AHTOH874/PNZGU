A = []
n = 6
# n = int(input("Enter the number of vertices: "))

# for i in range(n):
#     C = []
#     s = input()
#     for symb in s:
#         C.append(int(symb))
#     A.append(C)
A = [[0, 1, 1, 1, 0, 0],
     [1, 0, 1, 1, 0, 0],
     [1, 1, 0, 0, 0, 1],
     [1, 1, 0, 0, 1, 1],
     [0, 0, 0, 1, 0, 1],
     [0, 0, 1, 1, 1, 0]]
e = 0

for i in range(len(A)):
    e += int(sum(A[i]))
e = e // 2
print(e)

B = [[0] * e] * n
print(B[1][3]);
k = 0

for i in range(n):
    for j in range(n):
        if A[i][j] == 1 and j>i:
            print(i,j, k)
            B[i][k] = 1
            # B[j][k] = -1
            print(B[i]);
            k += 1

for str in A:
    print(str)

for str in B:
    print(str)