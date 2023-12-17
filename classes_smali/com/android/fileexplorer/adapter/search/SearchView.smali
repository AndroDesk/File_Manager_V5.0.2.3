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
.field private static final APP_SHOW_SIZE:I = 0x8

.field private static final FOLD_SIZE_VALUE:I = 0x8

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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/search/SearchView;)Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mListener:Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/search/SearchView;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->fillData()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshAppView()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshCategoryView()V

    .line 4
    return-void
.end method

.method private createExpandView(Lcom/google/android/flexbox/FlexboxLayout;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d00e2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    .line 19
    const v1, 0x7f1103b7

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;->setText(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchView$2;

    .line 34
    invoke-direct {v1, p0, v0, p1}, Lcom/android/fileexplorer/adapter/search/SearchView$2;-><init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method private createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d00e2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    .line 19
    iget-object v1, p1, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;->setText(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    new-instance p2, Lcom/android/fileexplorer/adapter/search/SearchView$1;

    .line 29
    invoke-direct {p2, p0, p1, p3}, Lcom/android/fileexplorer/adapter/search/SearchView$1;-><init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method private fillData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchTag;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f11003c

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->tagName:Ljava/lang/String;

    .line 29
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    .line 31
    const-string v1, "com.android.soundrecorder"

    .line 33
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->packageName:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/search/SearchView;->getAppTagList(Ljava/util/List;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_39

    .line 53
    iget-object v1, v2, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_39
    iget-object v0, v2, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_46

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_46
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getFixedSearchTagList()Ljava/util/List;

    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/search/SearchView;->getContentTagList(Ljava/util/List;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 78
    move-result-object v0

    .line 79
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 81
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_5b

    .line 87
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5b
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

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f1103a6

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->getTagList(Ljava/util/List;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 17
    move-result-object p1

    .line 18
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

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f1103aa

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->getTagList(Ljava/util/List;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 17
    move-result-object p1

    .line 18
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchListTag;-><init>()V

    .line 6
    iput-object p2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->listName:Ljava/lang/String;

    .line 8
    iput-object p3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 10
    if-eqz p1, :cond_3e

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result p2

    .line 16
    const/16 p3, 0x8

    .line 18
    if-le p2, p3, :cond_14

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result p3

    .line 25
    :goto_18
    const/4 p2, 0x0

    .line 26
    :goto_19
    if-ge p2, p3, :cond_3e

    .line 28
    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 30
    invoke-direct {v1}, Lcom/android/fileexplorer/adapter/search/SearchTag;-><init>()V

    .line 33
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/search/SearchView;->nameConvert(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v1, Lcom/android/fileexplorer/adapter/search/SearchTag;->tagName:Ljava/lang/String;

    .line 43
    iput-object v2, v1, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    .line 45
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/search/SearchView;->packageNameConvert(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    iput-object v2, v1, Lcom/android/fileexplorer/adapter/search/SearchTag;->packageName:Ljava/lang/String;

    .line 55
    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 62
    goto :goto_19

    .line 63
    :cond_3e
    return-object v0
.end method

.method private initData()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->fillData()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->resetData()V

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshAppView()V

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->refreshCategoryView()V

    .line 22
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

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/ContentTag;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Lcom/android/fileexplorer/dao/file/ContentTag;

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/ContentTag;->getTagName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 18
    if-eqz v0, :cond_29

    .line 20
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 22
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_24

    .line 32
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    :goto_28
    return-object p1

    .line 42
    :cond_29
    const-string p1, ""

    .line 44
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

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const-string p1, ""

    .line 14
    return-object p1
.end method

.method private refreshAppView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_6e

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v1, v0, :cond_17

    .line 23
    goto :goto_6e

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mSplitLine:Landroid/view/View;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppTagList:Ljava/util/List;

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 38
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppSearchTitle:Landroid/widget/TextView;

    .line 40
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->listName:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 47
    if-eqz v2, :cond_6e

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    move-result v2

    .line 53
    :goto_34
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 58
    move-result v3

    .line 59
    if-ge v1, v3, :cond_6e

    .line 61
    const/16 v3, 0x9

    .line 63
    if-le v2, v3, :cond_5c

    .line 65
    const/16 v3, 0x8

    .line 67
    if-ge v1, v3, :cond_54

    .line 69
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 77
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 79
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 81
    invoke-direct {p0, v3, v4, v5}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 84
    goto :goto_6b

    .line 85
    :cond_54
    if-ne v1, v3, :cond_6e

    .line 87
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 89
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/adapter/search/SearchView;->createExpandView(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 92
    goto :goto_6b

    .line 93
    :cond_5c
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 95
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 101
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 103
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 105
    invoke-direct {p0, v3, v4, v5}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 108
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_34

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method

.method private refreshCategoryView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_49

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v1, v0, :cond_17

    .line 23
    goto :goto_49

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryTagList:Ljava/util/List;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 33
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategorySearchTitle:Landroid/widget/TextView;

    .line 35
    iget-object v3, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->listName:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 42
    if-eqz v2, :cond_49

    .line 44
    :goto_2b
    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 50
    if-ge v1, v2, :cond_49

    .line 52
    const/16 v2, 0x8

    .line 54
    if-ge v1, v2, :cond_49

    .line 56
    iget-object v2, v0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 58
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 64
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 66
    sget-object v4, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->Category:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 68
    invoke-direct {p0, v2, v3, v4}, Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_2b

    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method private resetData()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchView$3;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/search/SearchView$3;-><init>(Lcom/android/fileexplorer/adapter/search/SearchView;)V

    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0381

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 15
    const v0, 0x7f0a0372

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mAppSearchTitle:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a0382

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 37
    const v0, 0x7f0a0371

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mCategorySearchTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a03ce

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mSplitLine:Landroid/view/View;

    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchView;->initData()V

    .line 64
    return-void
.end method

.method public setOnSearchItemClickListener(Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView;->mListener:Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    .line 3
    return-void
.end method
