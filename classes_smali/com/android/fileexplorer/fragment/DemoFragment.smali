.class public Lcom/android/fileexplorer/fragment/DemoFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "DemoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"

.field private static final TAG:Ljava/lang/String; = "WidgetChooseFragment"


# instance fields
.field public mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

.field public mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mEntries:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/DemoFragment;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/DemoFragment;->getPageInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPageInfo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_b0

    goto :goto_50

    :sswitch_f
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_50

    :cond_18
    const/4 v4, 0x5

    goto :goto_50

    :sswitch_1a
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_50

    :cond_23
    const/4 v4, 0x4

    goto :goto_50

    :sswitch_25
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_50

    :cond_2e
    const/4 v4, 0x3

    goto :goto_50

    :sswitch_30
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_50

    :cond_39
    move v4, v1

    goto :goto_50

    :sswitch_3b
    const-string v0, "apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_50

    :cond_44
    move v4, v2

    goto :goto_50

    :sswitch_46
    const-string v0, "picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    move v4, v3

    :goto_50
    const-string p1, "选择文件"

    packed-switch v4, :pswitch_data_ca

    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_62  #0x5
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_6f  #0x4
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_7c  #0x3
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_89  #0x2
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_96  #0x1
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_a3  #0x0
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :sswitch_data_b0
    .sparse-switch
        -0x226fa302 -> :sswitch_46
        0x17a1c -> :sswitch_3b
        0x18538 -> :sswitch_30
        0x1d721 -> :sswitch_25
        0x636ee25 -> :sswitch_1a
        0x6b0147b -> :sswitch_f
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a3  #00000000
        :pswitch_96  #00000001
        :pswitch_89  #00000002
        :pswitch_7c  #00000003
        :pswitch_6f  #00000004
        :pswitch_62  #00000005
    .end packed-switch
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/DemoFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/DemoFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/DemoFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/DemoFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/DemoFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/DemoFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d01e4

    return v0
.end method

.method public getSpanCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f032d5d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/DemoFragment;->getSpanCount()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getWidgetChooseEntries()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mEntries:Ljava/util/List;

    new-instance p1, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/DemoFragment;Lcom/android/fileexplorer/fragment/DemoFragment$1;)V

    invoke-direct {p1, v0, v1}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mEntries:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/DemoFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method
