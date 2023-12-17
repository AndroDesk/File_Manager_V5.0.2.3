.class public Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
.super Ljava/lang/Object;
.source "ImmersionMenuItem.java"


# static fields
.field private static final ENABLED:I

.field private static final HIDDEN:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mId:I

.field private mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->ENABLED:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->HIDDEN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mId:I

    iput-object p3, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public getItemId()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mId:I

    return v0
.end method

.method public getSubMenu()Lcom/android/fileexplorer/view/menu/ImmersionMenu;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setEnabled(Z)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 2

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    goto :goto_f

    :cond_9
    iget p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    :goto_f
    return-object p0
.end method

.method public setSubMenu(Lcom/android/fileexplorer/view/menu/ImmersionMenu;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mSubMenu:Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    return-object p0
.end method

.method public setTitle(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->setTitle(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setVisible(Z)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->mFlags:I

    return-object p0
.end method
