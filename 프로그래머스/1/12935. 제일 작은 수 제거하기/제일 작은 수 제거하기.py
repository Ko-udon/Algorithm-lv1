def solution(arr):
    answer = []

    if len(arr) == 0 or len(arr) == 1:
        answer.append(-1)
        return answer


    arr.remove(min(arr))
    answer = arr
    return answer