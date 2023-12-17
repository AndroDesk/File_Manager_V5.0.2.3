.class public Lcom/android/fileexplorer/model/category/FileCategoryEntity;
.super Ljava/lang/Object;
.source "FileCategoryEntity.java"


# static fields
.field public static final POS_HOME_PAGE:I = 0x0

.field public static final POS_MORE_PAGE:I = 0x1

.field public static final POS_NAVI_PAGE:I = 0x2

.field public static final TYPE_DYNAMIC:I = 0x1

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
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    .line 6
    iput p4, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    .line 11
    iput p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    .line 12
    iput p4, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    .line 13
    iput p5, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;I)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    .line 23
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    .line 24
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 26
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 28
    iput p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->id:I

    return-void
.end method


# virtual methods
.method public getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    return-object v0
.end method

.method public getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_11

    .line 12
    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    :goto_11
    return-object p1
.end method

.method public getCategoryTitleRes()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->categoryTitleRes:I

    .line 3
    return v0
.end method

.method public getIconRes(I)I
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_6

    .line 4
    iget p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->naviPageIconRes:I

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->homePageIconRes:I

    .line 9
    :goto_8
    return p1
.end method

.method public getIndex()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->index:Ljava/lang/String;

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    return-object v0
.end method

.method public getNavId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->id:I

    .line 3
    return v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->type:I

    .line 3
    return v0
.end method

.method public setAppTag(Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->appTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    return-void
.end method
