.class public Lcom/android/fileexplorer/view/aosp/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/android/fileexplorer/view/aosp/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 10
    return-void
.end method

.method public onTabUnselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
