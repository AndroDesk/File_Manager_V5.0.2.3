.class public final Landroidx/viewpager2/widget/OriginalViewPager2$j;
.super Landroidx/viewpager2/widget/OriginalViewPager2$e;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

.field public final b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

.field public c:Landroidx/viewpager2/widget/g;

.field public final synthetic d:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;-><init>()V

    .line 6
    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    .line 8
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V

    .line 11
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    .line 13
    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    .line 15
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j$b;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V

    .line 18
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    .line 20
    return-void
.end method


# virtual methods
.method public final b(I)Z
    .registers 3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_b

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    .line 4
    if-eqz p1, :cond_a

    .line 6
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->c:Landroidx/viewpager2/widget/g;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 11
    :cond_a
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->c:Landroidx/viewpager2/widget/g;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method

.method public final f(Lmiuix/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 7
    new-instance p1, Landroidx/viewpager2/widget/g;

    .line 9
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/g;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V

    .line 12
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->c:Landroidx/viewpager2/widget/g;

    .line 14
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 16
    invoke-static {p1}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1b

    .line 22
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-static {p1, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 28
    :cond_1b
    return-void
.end method

.method public final g(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_2b

    .line 11
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 13
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    .line 16
    move-result v0

    .line 17
    if-ne v0, v2, :cond_1e

    .line 19
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 21
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 28
    move-result v0

    .line 29
    move v3, v1

    .line 30
    goto :goto_2d

    .line 31
    :cond_1e
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 33
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 40
    move-result v0

    .line 41
    move v3, v0

    .line 42
    move v0, v1

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    move v0, v1

    .line 45
    move v3, v0

    .line 46
    :goto_2d
    invoke-static {v0, v3, v1, v1}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 57
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_41

    .line 65
    goto :goto_6a

    .line 66
    :cond_41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_6a

    .line 72
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 74
    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_50

    .line 80
    goto :goto_6a

    .line 81
    :cond_50
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 83
    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 85
    if-lez v1, :cond_5b

    .line 87
    const/16 v1, 0x2000

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 92
    :cond_5b
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 94
    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 96
    sub-int/2addr v0, v2

    .line 97
    if-ge v1, v0, :cond_67

    .line 99
    const/16 v0, 0x1000

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 104
    :cond_67
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 107
    :cond_6a
    :goto_6a
    return-void
.end method

.method public final j(ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b(I)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_28

    .line 7
    const/16 p2, 0x2000

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, p2, :cond_13

    .line 12
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 14
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    .line 17
    move-result p1

    .line 18
    sub-int/2addr p1, v0

    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 22
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v0

    .line 27
    :goto_1a
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 29
    invoke-virtual {p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_27

    .line 35
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 37
    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItemInternal(IZ)V

    .line 40
    :cond_27
    return v0

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    throw p1
.end method

.method public final k()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    .line 4
    return-void
.end method

.method public final m(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 6
    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method

.method public final n()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    .line 4
    return-void
.end method

.method public final o()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    .line 4
    return-void
.end method

.method public final p()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    .line 4
    return-void
.end method

.method public final q()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    .line 4
    return-void
.end method

.method public final r()V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    const v1, 0x1020048

    .line 6
    invoke-static {v1, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 13
    const v3, 0x1020049

    .line 16
    invoke-static {v3, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 19
    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 22
    const v4, 0x1020046

    .line 25
    invoke-static {v4, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 28
    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 31
    const v5, 0x1020047

    .line 34
    invoke-static {v5, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 37
    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 40
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 42
    invoke-virtual {v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_30

    .line 48
    return-void

    .line 49
    :cond_30
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 51
    invoke-virtual {v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3d

    .line 61
    return-void

    .line 62
    :cond_3d
    iget-object v6, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 64
    invoke-virtual {v6}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_46

    .line 70
    return-void

    .line 71
    :cond_46
    iget-object v6, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 73
    invoke-virtual {v6}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    .line 76
    move-result v6

    .line 77
    const/4 v7, 0x0

    .line 78
    if-nez v6, :cond_80

    .line 80
    iget-object v4, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 82
    invoke-virtual {v4}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_59

    .line 88
    move v5, v1

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v5, v3

    .line 91
    :goto_5a
    if-eqz v4, :cond_5d

    .line 93
    move v1, v3

    .line 94
    :cond_5d
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 96
    iget v3, v3, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 100
    if-ge v3, v2, :cond_6f

    .line 102
    new-instance v2, Ln0/c$a;

    .line 104
    invoke-direct {v2, v7, v5, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    .line 107
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    .line 109
    invoke-static {v0, v2, v3}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 112
    :cond_6f
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 114
    iget v2, v2, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 116
    if-lez v2, :cond_a2

    .line 118
    new-instance v2, Ln0/c$a;

    .line 120
    invoke-direct {v2, v7, v1, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    .line 123
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    .line 125
    invoke-static {v0, v2, v1}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 128
    goto :goto_a2

    .line 129
    :cond_80
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 131
    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 133
    add-int/lit8 v2, v2, -0x1

    .line 135
    if-ge v1, v2, :cond_92

    .line 137
    new-instance v1, Ln0/c$a;

    .line 139
    invoke-direct {v1, v7, v5, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    .line 142
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    .line 144
    invoke-static {v0, v1, v2}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 147
    :cond_92
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 149
    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 151
    if-lez v1, :cond_a2

    .line 153
    new-instance v1, Ln0/c$a;

    .line 155
    invoke-direct {v1, v7, v4, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    .line 158
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    .line 160
    invoke-static {v0, v1, v2}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 163
    :cond_a2
    :goto_a2
    return-void
.end method
