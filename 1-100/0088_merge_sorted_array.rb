# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    while m > 0 && n > 0
        if nums1[m-1] > nums2[n-1]
            nums1[m+n-1] = nums1[m-1]
            m -= 1
        else
            nums1[m+n-1] = nums2[n-1]
            n -= 1
        end
    end

    while n > 0
        nums1[n-1] = nums2[n-1]
        n -= 1
    end

    nums1
end
