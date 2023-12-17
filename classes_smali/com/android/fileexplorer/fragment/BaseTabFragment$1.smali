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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

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
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    :cond_9
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_31

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$000(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$102(Lcom/android/fileexplorer/fragment/BaseTabFragment;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    :cond_31
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$200(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->access$300(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/widget/ImageView;)V

    return-void
.end method
