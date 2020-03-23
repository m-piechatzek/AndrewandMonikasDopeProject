# Kernel Prediction with medians
# 1.
plot(faithful$eruptions, faithful$waiting, col="grey"); 
lines(ksmooth(faithful$eruptions, faithful$waiting, bandwidth = 1), col="red", lwd=2)
# not sure if right

# 2.

# 3.

# KNN
# 4.
ran40 <- sample(1:nrow(faithful), 0.4 * nrow(faithful)) 
ran30 <- sample(1:nrow(faithful), 0.3 * nrow(faithful)) 
ran20 <- sample(1:nrow(faithful), 0.2 * nrow(faithful)) 
ran10 <- sample(1:nrow(faithful), 0.1 * nrow(faithful)) 
ran5 <- sample(1:nrow(faithful), 0.05 * nrow(faithful)) 
# Creating Train and Test data for 40%
faith_train = faithful[ran40,]
faith_test = faithful[-ran40,]
faith_target_category = faithful[ran40, 2]
faith_test_category = faithful[-ran40, 2]
knnfunc = knn(faith_train, faith_test, cl=faith_target_category, k=5)
knnframe = data.frame(faith_test, knnfunc)
knn40 = plot(knnframe$eruptions, knnframe$knnfunc, xlab = "Eruptions", ylab="KNN Waiting", main="K ranging at 40%")
knn40; lines(ksmooth(knnframe$eruptions, knnframe$knnfunc, bandwidth = 5), col="red", lwd=2)

# 30%
faith_train = faithful[ran30,]
faith_test = faithful[-ran30,]
faith_target_category = faithful[ran30, 2]
faith_test_category = faithful[-ran30, 2]
knnfunc = knn(faith_train, faith_test, cl=faith_target_category, k=5)
knnframe = data.frame(faith_test, knnfunc)
knn30 = plot(knnframe$eruptions, knnframe$knnfunc, xlab = "Eruptions", ylab="KNN Waiting", main="K ranging at 30%")
knn30 ; lines(ksmooth(knnframe$eruptions, knnframe$knnfunc, bandwidth = 5), col="red", lwd=2)

# 20%
faith_train = faithful[ran20,]
faith_test = faithful[-ran20,]
faith_target_category = faithful[ran20, 2]
faith_test_category = faithful[-ran20, 2]
knnfunc = knn(faith_train, faith_test, cl=faith_target_category, k=5)
knnframe = data.frame(faith_test, knnfunc)
knn20 = plot(knnframe$eruptions, knnframe$knnfunc, xlab = "Eruptions", ylab="KNN Waiting", main="K ranging at 20%")
knn20; lines(ksmooth(knnframe$eruptions, knnframe$knnfunc, bandwidth = 5), col="red", lwd=2)

# 10%
faith_train = faithful[ran10,]
faith_test = faithful[-ran10,]
faith_target_category = faithful[ran10, 2]
faith_test_category = faithful[-ran10, 2]
knnfunc = knn(faith_train, faith_test, cl=faith_target_category, k=5)
knnframe = data.frame(faith_test, knnfunc)
knn10 = plot(knnframe$eruptions, knnframe$knnfunc, xlab = "Eruptions", ylab="KNN Waiting", main="K ranging at 10%");
knn10; lines(ksmooth(knnframe$eruptions, knnframe$knnfunc, bandwidth = 5), col="red", lwd=2)

# 5%
faith_train = faithful[ran5,]
faith_test = faithful[-ran5,]
faith_target_category = faithful[ran5, 2]
faith_test_category = faithful[-ran5, 2]
knnfunc = knn(faith_train, faith_test, cl=faith_target_category, k=5)
knnframe = data.frame(faith_test, knnfunc)
knn5 = plot(knnframe$eruptions, knnframe$knnfunc, xlab = "Eruptions", ylab="KNN Waiting", main="K ranging at 5%");
knn5; lines(ksmooth(knnframe$eruptions, knnframe$knnfunc, bandwidth = 5), col="red", lwd=2)








