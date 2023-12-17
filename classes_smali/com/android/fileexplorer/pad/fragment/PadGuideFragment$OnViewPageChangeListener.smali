.class Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;
.super Ljava/lang/Object;
.source "PadGuideFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnViewPageChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;-><init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 3
    invoke-static {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$202(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;I)I

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->getCount()I

    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    if-ne p1, v0, :cond_34

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 22
    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;

    .line 25
    move-result-object p1

    .line 26
    const/16 v0, 0x8

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 33
    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$500(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;

    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f110152

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_34
    return-void
.end method
