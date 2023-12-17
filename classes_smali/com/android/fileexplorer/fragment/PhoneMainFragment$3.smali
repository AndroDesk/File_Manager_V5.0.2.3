.class Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;
.super Ljava/lang/Object;
.source "PhoneMainFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/OriginalViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initTab(Lmiuix/appcompat/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    :cond_f
    const-string v0, "onPageSelected:"

    const-string v1, "PhoneMainFragment"

    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$202(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$300(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/Fragment;

    iput-object v1, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/Navigator;->selectTab(I)V

    :cond_44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_4d

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$400(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Z)V

    :cond_66
    if-nez p1, :cond_7c

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f110075

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setTitle(I)V

    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    goto :goto_bf

    :cond_7c
    if-ne p1, v1, :cond_ac

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const p1, 0x7f1101fe

    goto :goto_9b

    :cond_8e
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p1

    if-eqz p1, :cond_98

    const p1, 0x7f110337

    goto :goto_9b

    :cond_98
    const p1, 0x7f110353

    :goto_9b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(I)V

    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    goto :goto_bf

    :cond_ac
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f110065

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setTitle(I)V

    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    :goto_bf
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$500(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    return-void
.end method
