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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;-><init>()V

    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j$b;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

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

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->c:Landroidx/viewpager2/widget/g;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

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

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->c:Landroidx/viewpager2/widget/g;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

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

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    new-instance p1, Landroidx/viewpager2/widget/g;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/g;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->c:Landroidx/viewpager2/widget/g;

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-static {p1}, Lm0/g0$d;->c(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    :cond_1b
    return-void
.end method

.method public final g(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v1

    goto :goto_2d

    :cond_1e
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v0

    move v0, v1

    goto :goto_2d

    :cond_2b
    move v0, v1

    move v3, v0

    :goto_2d
    invoke-static {v0, v3, v1, v1}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    move-result-object v0

    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_41

    goto :goto_6a

    :cond_41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_6a

    :cond_50
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-lez v1, :cond_5b

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5b
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_67

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_67
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final j(ILandroid/os/Bundle;)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b(I)Z

    move-result p2

    if-eqz p2, :cond_28

    const/16 p2, 0x2000

    const/4 v0, 0x1

    if-ne p1, p2, :cond_13

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_1a

    :cond_13
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    :goto_1a
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result p2

    if-eqz p2, :cond_27

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItemInternal(IZ)V

    :cond_27
    return v0

    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final k()V
    .registers 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    return-void
.end method

.method public final m(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    const-string v0, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n()V
    .registers 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    return-void
.end method

.method public final o()V
    .registers 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    return-void
.end method

.method public final p()V
    .registers 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    return-void
.end method

.method public final q()V
    .registers 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;->r()V

    return-void
.end method

.method public final r()V
    .registers 9

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    const v1, 0x1020048

    invoke-static {v1, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    const v3, 0x1020049

    invoke-static {v3, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    const v4, 0x1020046

    invoke-static {v4, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    const v5, 0x1020047

    invoke-static {v5, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    invoke-static {v2, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_30

    return-void

    :cond_30
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_3d

    return-void

    :cond_3d
    iget-object v6, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v6}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result v6

    if-nez v6, :cond_46

    return-void

    :cond_46
    iget-object v6, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v6}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_80

    iget-object v4, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_59

    move v5, v1

    goto :goto_5a

    :cond_59
    move v5, v3

    :goto_5a
    if-eqz v4, :cond_5d

    move v1, v3

    :cond_5d
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v3, v3, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_6f

    new-instance v2, Ln0/c$a;

    invoke-direct {v2, v7, v5, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    invoke-static {v0, v2, v3}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    :cond_6f
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-lez v2, :cond_a2

    new-instance v2, Ln0/c$a;

    invoke-direct {v2, v7, v1, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    invoke-static {v0, v2, v1}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    goto :goto_a2

    :cond_80
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_92

    new-instance v1, Ln0/c$a;

    invoke-direct {v1, v7, v5, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j$a;

    invoke-static {v0, v1, v2}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    :cond_92
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-lez v1, :cond_a2

    new-instance v1, Ln0/c$a;

    invoke-direct {v1, v7, v4, v7, v7}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j;->b:Landroidx/viewpager2/widget/OriginalViewPager2$j$b;

    invoke-static {v0, v1, v2}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    :cond_a2
    :goto_a2
    return-void
.end method
