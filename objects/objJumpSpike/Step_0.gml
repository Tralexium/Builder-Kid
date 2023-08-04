// Prevent overshooting the target distance
if count + dCount < 0 {
    dCount = -count
}
if count + dCount > dist {
    dCount = dist-count
}

// Increment count and position by the delta
count += dCount
x += dCount * xScalar
y += dCount * yScalar

// Stop moving if reached the end
if count >= dist or count <= 0 {
    dCount = 0
}

