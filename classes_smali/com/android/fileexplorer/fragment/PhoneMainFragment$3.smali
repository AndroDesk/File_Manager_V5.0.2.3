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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 5
    if-eqz v0, :cond_f

    .line 7
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 16
    :cond_f
    const-string v0, "onPageSelected:"

    .line 18
    const-string v1, "PhoneMainFragment"

    .line 20
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 25
    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$202(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)I

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$300(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(I)Landroidx/fragment/app/Fragment;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lmiuix/appcompat/app/Fragment;

    .line 40
    iput-object v1, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 44
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 54
    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_44

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 62
    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lmiuix/navigator/Navigator;->selectTab(I)V

    .line 69
    :cond_44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 71
    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_4d

    .line 77
    return-void

    .line 78
    :cond_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 80
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_66

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 99
    move-result v2

    .line 100
    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$400(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Z)V

    .line 103
    :cond_66
    if-nez p1, :cond_7c

    .line 105
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 107
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 110
    move-result-object p1

    .line 111
    const v0, 0x7f110075

    .line 114
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 117
    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 119
    const/16 v0, 0x3e8

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    .line 124
    goto :goto_bf

    .line 125
    :cond_7c
    if-ne p1, v1, :cond_ac

    .line 127
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 129
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_8e

    .line 139
    const p1, 0x7f1101fe

    .line 142
    goto :goto_9b

    .line 143
    :cond_8e
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_98

    .line 149
    const p1, 0x7f110337

    .line 152
    goto :goto_9b

    .line 153
    :cond_98
    const p1, 0x7f110353

    .line 156
    :goto_9b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 158
    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 165
    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 167
    const/16 v0, 0x3e9

    .line 169
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    .line 172
    goto :goto_bf

    .line 173
    :cond_ac
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 175
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 178
    move-result-object p1

    .line 179
    const v0, 0x7f110065

    .line 182
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 185
    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 187
    const/16 v0, 0x3ea

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    .line 192
    :goto_bf
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 194
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$500(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    .line 197
    return-void
.end method
