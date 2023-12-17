.class public Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;
.super Ljava/lang/Object;
.source "MirrorMenuWrapper.java"


# instance fields
.field private mMenuId:I

.field private mMirrorMenu:Lcom/xiaomi/mirror/MirrorMenu;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/MirrorMenu;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMirrorMenu:Lcom/xiaomi/mirror/MirrorMenu;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMirrorMenu:Lcom/xiaomi/mirror/MirrorMenu;

    .line 5
    iput p2, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMenuId:I

    return-void
.end method


# virtual methods
.method public getMenuId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMenuId:I

    .line 3
    return v0
.end method

.method public setMenuId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMenuId:I

    .line 3
    return-void
.end method
