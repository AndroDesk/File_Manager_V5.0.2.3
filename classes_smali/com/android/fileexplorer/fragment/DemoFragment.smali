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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mEntries:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/DemoFragment;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/DemoFragment;->getPageInfo(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getPageInfo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, -0x1

    .line 12
    sparse-switch v0, :sswitch_data_b0

    .line 15
    goto :goto_50

    .line 16
    :sswitch_f
    const-string v0, "video"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_18

    .line 24
    goto :goto_50

    .line 25
    :cond_18
    const/4 v4, 0x5

    .line 26
    goto :goto_50

    .line 27
    :sswitch_1a
    const-string v0, "music"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_23

    .line 35
    goto :goto_50

    .line 36
    :cond_23
    const/4 v4, 0x4

    .line 37
    goto :goto_50

    .line 38
    :sswitch_25
    const-string v0, "zip"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2e

    .line 46
    goto :goto_50

    .line 47
    :cond_2e
    const/4 v4, 0x3

    .line 48
    goto :goto_50

    .line 49
    :sswitch_30
    const-string v0, "doc"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_39

    .line 57
    goto :goto_50

    .line 58
    :cond_39
    move v4, v1

    .line 59
    goto :goto_50

    .line 60
    :sswitch_3b
    const-string v0, "apk"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_44

    .line 68
    goto :goto_50

    .line 69
    :cond_44
    move v4, v2

    .line 70
    goto :goto_50

    .line 71
    :sswitch_46
    const-string v0, "picture"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v4, v3

    .line 81
    :goto_50
    const-string p1, "选择文件"

    .line 83
    packed-switch v4, :pswitch_data_ca

    .line 86
    new-array v0, v1, [Ljava/lang/String;

    .line 88
    const-class v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    aput-object v1, v0, v3

    .line 96
    aput-object p1, v0, v2

    .line 98
    return-object v0

    .line 99
    :pswitch_62  #0x5
    new-array v0, v1, [Ljava/lang/String;

    .line 101
    const-class v1, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    aput-object v1, v0, v3

    .line 109
    aput-object p1, v0, v2

    .line 111
    return-object v0

    .line 112
    :pswitch_6f  #0x4
    new-array v0, v1, [Ljava/lang/String;

    .line 114
    const-class v1, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    aput-object v1, v0, v3

    .line 122
    aput-object p1, v0, v2

    .line 124
    return-object v0

    .line 125
    :pswitch_7c  #0x3
    new-array v0, v1, [Ljava/lang/String;

    .line 127
    const-class v1, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    aput-object v1, v0, v3

    .line 135
    aput-object p1, v0, v2

    .line 137
    return-object v0

    .line 138
    :pswitch_89  #0x2
    new-array v0, v1, [Ljava/lang/String;

    .line 140
    const-class v1, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    aput-object v1, v0, v3

    .line 148
    aput-object p1, v0, v2

    .line 150
    return-object v0

    .line 151
    :pswitch_96  #0x1
    new-array v0, v1, [Ljava/lang/String;

    .line 153
    const-class v1, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    aput-object v1, v0, v3

    .line 161
    aput-object p1, v0, v2

    .line 163
    return-object v0

    .line 164
    :pswitch_a3  #0x0
    new-array v0, v1, [Ljava/lang/String;

    .line 166
    const-class v1, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    aput-object v1, v0, v3

    .line 174
    aput-object p1, v0, v2

    .line 176
    return-object v0

    .line 177
    :sswitch_data_b0
    .sparse-switch
        -0x226fa302 -> :sswitch_46
        0x17a1c -> :sswitch_3b
        0x18538 -> :sswitch_30
        0x1d721 -> :sswitch_25
        0x636ee25 -> :sswitch_1a
        0x6b0147b -> :sswitch_f
    .end sparse-switch

    .line 203
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

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/DemoFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/DemoFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/DemoFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/DemoFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/DemoFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
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

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mContext:Landroid/content/Context;

    .line 7
    const v0, 0x7f0a00cb

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/DemoFragment;->getSpanCount()I

    .line 25
    move-result v1

    .line 26
    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getWidgetChooseEntries()Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mEntries:Ljava/util/List;

    .line 42
    new-instance p1, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mContext:Landroid/content/Context;

    .line 46
    new-instance v1, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/DemoFragment;Lcom/android/fileexplorer/fragment/DemoFragment$1;)V

    .line 52
    invoke-direct {p1, v0, v1}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mEntries:Ljava/util/List;

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;->setData(Ljava/util/List;)V

    .line 62
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    .line 66
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12032d

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/DemoFragment;->getSpanCount()I

    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 13
    return-void
.end method
