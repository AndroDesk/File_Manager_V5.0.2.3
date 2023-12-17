.class Lcom/android/fileexplorer/fragment/BaseTabFragment$1;
.super Ljava/lang/Object;
.source "BaseTabFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseTabFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

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
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 10
    :cond_9
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    array-length v1, v0

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 15
    if-gt p1, v1, :cond_31

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    .line 19
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$000(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 29
    invoke-virtual {v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_31

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    .line 37
    aget-object p1, v0, p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$102(Lcom/android/fileexplorer/fragment/BaseTabFragment;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 50
    :cond_31
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    .line 52
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$200(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Landroid/widget/ImageView;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$300(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/widget/ImageView;)V

    .line 59
    return-void
.end method
