.class Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnchorInfo"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAssignedFromSavedState:Z

.field private mCoordinate:I

.field private mFlexLinePosition:I

.field private mLayoutFromEnd:Z

.field private mPerpendicularCoordinate:I

.field private mPosition:I

.field private mValid:Z

.field public final synthetic this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;


# direct methods
.method private constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$1302(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 3
    return p0
.end method

.method public static synthetic access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 3
    return p1
.end method

.method public static synthetic access$1802(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 3
    return p0
.end method

.method public static synthetic access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->reset()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 3
    return p0
.end method

.method public static synthetic access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 3
    return p1
.end method

.method private assignCoordinateFromPadding()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_33

    .line 9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 11
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3000(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_33

    .line 17
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 23
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 30
    move-result v0

    .line 31
    goto :goto_30

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 40
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 47
    move-result v1

    .line 48
    sub-int/2addr v0, v1

    .line 49
    :goto_30
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 51
    goto :goto_4e

    .line 52
    :cond_33
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 54
    if-eqz v0, :cond_42

    .line 56
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 58
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 65
    move-result v0

    .line 66
    goto :goto_4c

    .line 67
    :cond_42
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 69
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 76
    move-result v0

    .line 77
    :goto_4c
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 79
    :goto_4e
    return-void
.end method

.method private assignFromView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 3
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 11
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3200(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 18
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;

    .line 21
    move-result-object v0

    .line 22
    :goto_15
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3c

    .line 30
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 32
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3000(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3c

    .line 38
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 40
    if-eqz v1, :cond_35

    .line 42
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 53
    goto :goto_52

    .line 54
    :cond_35
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 60
    goto :goto_52

    .line 61
    :cond_3c
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 63
    if-eqz v1, :cond_4c

    .line 65
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    .line 72
    move-result v0

    .line 73
    add-int/2addr v0, v1

    .line 74
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 76
    goto :goto_52

    .line 77
    :cond_4c
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 83
    :goto_52
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 85
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 91
    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    .line 94
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 96
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3300(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/FlexboxHelper;

    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 102
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 104
    const/4 v2, -0x1

    .line 105
    if-eq v1, v2, :cond_6b

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v1, p1

    .line 109
    :goto_6c
    aget v0, v0, v1

    .line 111
    if-eq v0, v2, :cond_71

    .line 113
    move p1, v0

    .line 114
    :cond_71
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 116
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 118
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3400(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 125
    move-result p1

    .line 126
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 128
    if-le p1, v0, :cond_93

    .line 130
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 132
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3400(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    .line 135
    move-result-object p1

    .line 136
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 144
    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 146
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 148
    :cond_93
    return-void
.end method

.method private reset()V
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 6
    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    .line 15
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v1, :cond_38

    .line 25
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 27
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2c

    .line 33
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 35
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2900(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 38
    move-result v1

    .line 39
    if-ne v1, v3, :cond_29

    .line 41
    move v0, v3

    .line 42
    :cond_29
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 44
    goto :goto_58

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 47
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 50
    move-result v1

    .line 51
    if-ne v1, v2, :cond_35

    .line 53
    move v0, v3

    .line 54
    :cond_35
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 56
    goto :goto_58

    .line 57
    :cond_38
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 59
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4d

    .line 65
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 67
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2900(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x3

    .line 72
    if-ne v1, v2, :cond_4a

    .line 74
    move v0, v3

    .line 75
    :cond_4a
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 77
    goto :goto_58

    .line 78
    :cond_4d
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 80
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    .line 83
    move-result v1

    .line 84
    if-ne v1, v2, :cond_56

    .line 86
    move v0, v3

    .line 87
    :cond_56
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 89
    :goto_58
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AnchorInfo{mPosition="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mFlexLinePosition="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mCoordinate="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", mPerpendicularCoordinate="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", mLayoutFromEnd="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", mValid="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", mAssignedFromSavedState="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const/16 v1, 0x7d

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
