.class public Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;
.super Ljava/lang/Object;
.source "MirrorMenuWrapper.java"


# instance fields
.field private mMenuId:I

.field private mMirrorMenu:Lcom/xiaomi/mirror/MirrorMenu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mirror/MirrorMenu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMirrorMenu:Lcom/xiaomi/mirror/MirrorMenu;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMirrorMenu:Lcom/xiaomi/mirror/MirrorMenu;

    iput p2, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMenuId:I

    return-void
.end method


# virtual methods
.method public getMenuId()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMenuId:I

    return v0
.end method

.method public setMenuId(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorMenuWrapper;->mMenuId:I

    return-void
.end method
