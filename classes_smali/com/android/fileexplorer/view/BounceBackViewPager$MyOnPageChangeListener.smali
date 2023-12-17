.class Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/BounceBackViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 1
    if-nez p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$602(Lcom/android/fileexplorer/view/BounceBackViewPager;F)F

    .line 9
    :cond_8
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 3
    invoke-static {p3, p1}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$302(Lcom/android/fileexplorer/view/BounceBackViewPager;I)I

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 8
    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$602(Lcom/android/fileexplorer/view/BounceBackViewPager;F)F

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$000(Lcom/android/fileexplorer/view/BounceBackViewPager;)V

    .line 16
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method
