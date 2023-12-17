.class public Lcom/android/fileexplorer/adapter/search/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;
    }
.end annotation


# static fields
.field private static final APP_SHOW_SIZE:I

.field private static final FOLD_SIZE_VALUE:I

.field public static final RECORDER_APP:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final RECORDER_APP_PAGE:Ljava/lang/String; = "com.android.soundrecorder.RecordPreviewActivity"


# instance fields
.field private mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field private mAppSearchTitle:Landroid/widget/TextView;

.field private mAppTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchListTag;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field private mCategorySearchTitle:Landroid/widget/TextView;

.field private mCategoryTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchListTag;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

.field private mSplitLine:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/search/SearchView;->APP_SHOW_SIZE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/search/SearchView;->FOLD_SIZE_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/search/SearchView;)Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mListener:Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/search/SearchView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->fillData()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshAppView()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshCategoryView()V

    return-void
.end method

.method private createExpandView(Lcom/google/android/flexbox/FlexboxLayout;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042d74

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    const v1, 0x7f1103b7

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;->setText(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchView$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/fileexplorer/adapter/search/SearchView$2;-><init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;Lcom/google/android/flexbox/FlexboxLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042d74

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    iget-object v1, p1, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;->setText(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/android/fileexplorer/adapter/search/SearchView$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/fileexplorer/adapter/search/SearchView$1;-><init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private fillData()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchTag;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchTag;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182daa

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->tagName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    const-string v1, "com.android.soundrecorder"

    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/search/SearchView;->getAppTagList(Ljava/util/List;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    move-result-object v2

    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v2, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v0, v2, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getFixedSearchTagList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/search/SearchView;->getContentTagList(Ljava/util/List;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    move-result-object v0

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    return-void
.end method

.method private getAppTagList(Ljava/util/List;)Lcom/android/fileexplorer/adapter/search/SearchListTag;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)",
            "Lcom/android/fileexplorer/adapter/search/SearchListTag;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182e30

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->getTagList(Ljava/util/List;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    move-result-object p1

    return-object p1
.end method

.method private getContentTagList(Ljava/util/List;)Lcom/android/fileexplorer/adapter/search/SearchListTag;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)",
            "Lcom/android/fileexplorer/adapter/search/SearchListTag;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182e3c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->getTagList(Ljava/util/List;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    move-result-object p1

    return-object p1
.end method

.method private getTagList(Ljava/util/List;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)Lcom/android/fileexplorer/adapter/search/SearchListTag;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/adapter/search/SearchType;",
            ")",
            "Lcom/android/fileexplorer/adapter/search/SearchListTag;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchListTag;-><init>()V

    iput-object p2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->listName:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->type:Lcom/android/fileexplorer/adapter/search/SearchType;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x8

    if-le p2, p3, :cond_14

    goto :goto_18

    :cond_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_18
    const/4 p2, 0x0

    :goto_19
    if-ge p2, p3, :cond_3e

    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchTag;

    invoke-direct {v1}, Lcom/android/fileexplorer/adapter/search/SearchTag;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/search/SearchView;->nameConvert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/adapter/search/SearchTag;->tagName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/search/SearchView;->packageNameConvert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/adapter/search/SearchTag;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :cond_3e
    return-object v0
.end method

.method private initData()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->fillData()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->resetData()V

    goto :goto_15

    :cond_f
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshAppView()V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshCategoryView()V

    :goto_15
    return-void
.end method

.method private nameConvert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/ContentTag;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/fileexplorer/dao/file/ContentTag;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/ContentTag;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v0, :cond_29

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_24
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p1

    :goto_28
    return-object p1

    :cond_29
    const-string p1, ""

    return-object p1
.end method

.method private packageNameConvert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, ""

    return-object p1
.end method

.method private refreshAppView()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_17

    goto :goto_6e

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mSplitLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppSearchTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->listName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    if-eqz v2, :cond_6e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_34
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6e

    const/16 v3, 0x9

    if-le v2, v3, :cond_5c

    const/16 v3, 0x8

    if-ge v1, v3, :cond_54

    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/adapter/search/SearchTag;

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    goto :goto_6b

    :cond_54
    if-ne v1, v3, :cond_6e

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/adapter/search/SearchView;->createExpandView(Lcom/google/android/flexbox/FlexboxLayout;)V

    goto :goto_6b

    :cond_5c
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/adapter/search/SearchTag;

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_6e
    :goto_6e
    return-void
.end method

.method private refreshCategoryView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_17

    goto :goto_49

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategorySearchTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->listName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    if-eqz v2, :cond_49

    :goto_2b
    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    const/16 v2, 0x8

    if-ge v1, v2, :cond_49

    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchTag;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    sget-object v4, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->Category:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_49
    :goto_49
    return-void
.end method

.method private resetData()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchView$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/search/SearchView$3;-><init>(Lcom/android/fileexplorer/adapter/search/SearchView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032e17

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    const v0, 0x7f032ee4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppSearchTitle:Landroid/widget/TextView;

    const v0, 0x7f032e14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    const v0, 0x7f032ee7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategorySearchTitle:Landroid/widget/TextView;

    const v0, 0x7f032e58

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mSplitLine:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->initData()V

    return-void
.end method

.method public setOnSearchItemClickListener(Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mListener:Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    return-void
.end method
