.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "GroupItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$n;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceAroundDecoration"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mColumn:I

.field private mHeaderCount:I

.field private marginMiddle:I

.field private marginSide:I


# direct methods
.method public constructor <init>(IIILjava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    iput p5, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mHeaderCount:I

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    .line 8
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 10
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    .line 12
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->list:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 7

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    instance-of v1, p3, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 7
    if-eqz v1, :cond_16

    .line 9
    move-object v1, p3

    .line 10
    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isSpecialViewType(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 21
    goto/16 :goto_c5

    .line 23
    :cond_16
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->list:Ljava/util/List;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    move-result p2

    .line 29
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mHeaderCount:I

    .line 31
    add-int/2addr p2, p3

    .line 32
    if-le p2, v0, :cond_c5

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->list:Ljava/util/List;

    .line 36
    sub-int/2addr v0, p3

    .line 37
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 43
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_36

    .line 49
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_c5

    .line 55
    :cond_36
    iget p2, p2, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 57
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    .line 59
    rem-int/2addr p2, p3

    .line 60
    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    .line 62
    div-int/lit8 v0, p4, 0x2

    .line 64
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 66
    div-int/lit8 v0, p4, 0x2

    .line 68
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    add-int/lit8 v0, p3, -0x1

    .line 72
    mul-int/2addr v0, p4

    .line 73
    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 75
    const/4 v1, 0x2

    .line 76
    mul-int/2addr p4, v1

    .line 77
    add-int/2addr p4, v0

    .line 78
    div-int/2addr p4, p3

    .line 79
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 82
    move-result p3

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->isInGroupFirst(I)Z

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6a

    .line 89
    if-eqz p3, :cond_62

    .line 91
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 93
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 95
    sub-int/2addr p4, p2

    .line 96
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 98
    goto :goto_be

    .line 99
    :cond_62
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 101
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 103
    sub-int/2addr p4, p2

    .line 104
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 106
    goto :goto_be

    .line 107
    :cond_6a
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_89

    .line 110
    if-eqz p3, :cond_7c

    .line 112
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    .line 114
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 116
    sub-int p3, p4, p3

    .line 118
    sub-int/2addr p2, p3

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 121
    sub-int/2addr p4, p2

    .line 122
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 124
    goto :goto_be

    .line 125
    :cond_7c
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    .line 127
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 129
    sub-int p3, p4, p3

    .line 131
    sub-int/2addr p2, p3

    .line 132
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 134
    sub-int/2addr p4, p2

    .line 135
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 137
    goto :goto_be

    .line 138
    :cond_89
    if-ne p2, v1, :cond_a7

    .line 140
    if-eqz p3, :cond_9a

    .line 142
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    .line 144
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 146
    sub-int p3, p4, p3

    .line 148
    sub-int/2addr p2, p3

    .line 149
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 151
    sub-int/2addr p4, p2

    .line 152
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 154
    goto :goto_be

    .line 155
    :cond_9a
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    .line 157
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 159
    sub-int p3, p4, p3

    .line 161
    sub-int/2addr p2, p3

    .line 162
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 164
    sub-int/2addr p4, p2

    .line 165
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 167
    goto :goto_be

    .line 168
    :cond_a7
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->isInGroupLast(I)Z

    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_be

    .line 174
    if-eqz p3, :cond_b7

    .line 176
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 178
    sub-int/2addr p4, p2

    .line 179
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 181
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 183
    goto :goto_be

    .line 184
    :cond_b7
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    .line 186
    sub-int/2addr p4, p2

    .line 187
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 189
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 191
    :cond_be
    :goto_be
    const-string p1, "SpaceAroundDecoration"

    .line 193
    const-string p2, "realIndex"

    .line 195
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_c5
    :goto_c5
    return-void
.end method

.method public isInGroupFirst(I)Z
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq v0, p1, :cond_a

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    .line 6
    rem-int/2addr p1, v0

    .line 7
    if-nez p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method public isInGroupLast(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eq v1, p1, :cond_b

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    .line 7
    rem-int/2addr p1, v1

    .line 8
    sub-int/2addr v1, v0

    .line 9
    if-ne p1, v1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method
