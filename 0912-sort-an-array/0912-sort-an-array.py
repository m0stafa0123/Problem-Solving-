class Solution:
    def sortArray(self, nums: List[int]) -> List[int]:
     
       if len(nums)  <=1 : 
           return nums 
       mid = len(nums) //2
       a = self.sortArray(nums[mid:]) 
       b = self.sortArray(nums[:mid])   
       return self.margeArray(a , b )
    def margeArray(self , a : List[int] , b : List[int]) -> List[int] :
        i=j=0
        marged = []
        while i < len(a) and j<len(b) :
            if a[i]<b[j] :
                marged.append(a[i])
                i+=1
            else :
                marged.append(b[j])
        
                j+=1
        marged.extend(a[i:])
        marged.extend(b[j:])
        return marged
                