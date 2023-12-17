.class public Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
.super Ljava/lang/Object;
.source "ImmersionMenuItem.java"


# static fields
.field private static final ENABLED:I = 0x10

.field private static final HIDDEN:I = 0x8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mId:I

.field private mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    .line 10
    iput p2, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mId:I

    .line 12
    iput-object p3, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 14
    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public getItemId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mId:I

    .line 3
    return v0
.end method

.method public getSubMenu()Lcom/android/fileexplorer/view/menu/ImmersionMenu;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public setEnabled(Z)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 5
    or-int/lit8 p1, p1, 0x10

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 12
    and-int/lit8 p1, p1, -0x11

    .line 14
    iput p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 16
    :goto_f
    return-object p0
.end method

.method public setSubMenu(Lcom/android/fileexplorer/view/menu/ImmersionMenu;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    .line 3
    return-object p0
.end method

.method public setTitle(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->setTitle(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setVisible(Z)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const/16 p1, 0x8

    .line 11
    :goto_a
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    .line 14
    return-object p0
.end method
