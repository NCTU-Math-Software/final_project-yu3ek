# final_project-yu3ek
final_project-yu3ek created by GitHub Classroom


# 第五個project，題目是在圖上隨意點三個點，判斷圓點是否在三個點連成的三角形內部
# 作法:
1.先在圖上輸入三個點，座標為(x1,y1),(x2,y2),(x3,y3)

2.上面三個點取兩個點，跟原點連成小三角形，總共有三個小三角形

3.把三個小三角形的面積求出來，叫s1,s2,s3

4.把選的三個點連成的大三角形，求面積叫s

5.把s1,s2,s3相加叫stotal

6.如果s跟stotal一樣，原點就是內部的點，反之就是外部的點

7.把圖秀出來檢查
