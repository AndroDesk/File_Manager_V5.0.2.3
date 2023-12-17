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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$1;)V
    .registers 3

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

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$202(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_38

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$500(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182cc4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    return-void
.end method
