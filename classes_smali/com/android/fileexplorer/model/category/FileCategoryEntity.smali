.class public Lcom/android/fileexplorer/model/category/FileCategoryEntity;
.super Ljava/lang/Object;
.source "FileCategoryEntity.java"


# static fields
.field public static final POS_HOME_PAGE:I

.field public static final POS_MORE_PAGE:I

.field public static final POS_NAVI_PAGE:I

.field public static final TYPE_DYNAMIC:I

.field public static final TYPE_FIXED:I


# instance fields
.field private appTag:Lcom/android/fileexplorer/dao/file/AppTag;

.field private categoryTitleRes:I

.field private homePageIconRes:I

.field private id:I

.field private index:Ljava/lang/String;

.field private naviPageIconRes:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->POS_HOME_PAGE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->POS_MORE_PAGE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->POS_NAVI_PAGE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->TYPE_DYNAMIC:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    iput p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    iput p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    iput p4, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    iput p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    iput p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    iput p4, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    iput p5, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    iput p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->id:I

    return-void
.end method


# virtual methods
.method public getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    return-object v0
.end method

.method public getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public getCategoryTitleRes()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    return v0
.end method

.method public getIconRes(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    goto :goto_8

    :cond_6
    iget p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    :goto_8
    return p1
.end method

.method public getIndex()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getNavId()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->id:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    return v0
.end method

.method public setAppTag(Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    return-void
.end method
