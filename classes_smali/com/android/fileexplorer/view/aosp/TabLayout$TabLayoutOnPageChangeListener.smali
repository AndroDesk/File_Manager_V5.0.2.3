.class public Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/aosp/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 7
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 9

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 9
    if-eqz p3, :cond_23

    .line 11
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v0, v2, :cond_18

    .line 18
    iget v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 20
    if-ne v4, v3, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    move v4, v1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    :goto_18
    move v4, v3

    .line 26
    :goto_19
    if-ne v0, v2, :cond_1f

    .line 28
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 30
    if-eqz v0, :cond_20

    .line 32
    :cond_1f
    move v1, v3

    .line 33
    :cond_20
    invoke-virtual {p3, p1, p2, v4, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setScrollPosition(IFZZ)V

    .line 36
    :cond_23
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 9
    if-eqz v0, :cond_2c

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getSelectedTabPosition()I

    .line 14
    move-result v1

    .line 15
    if-eq v1, p1, :cond_2c

    .line 17
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabCount()I

    .line 20
    move-result v1

    .line 21
    if-ge p1, v1, :cond_2c

    .line 23
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 25
    if-eqz v1, :cond_24

    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v1, v2, :cond_22

    .line 30
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 32
    if-nez v1, :cond_22

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    :goto_24
    const/4 v1, 0x1

    .line 38
    :goto_25
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabAt(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;Z)V

    .line 45
    :cond_2c
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 6
    return-void
.end method
