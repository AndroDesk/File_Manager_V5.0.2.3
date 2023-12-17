.class public Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;
.super Ljava/lang/Object;
.source "MirrorPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Menu"
.end annotation


# instance fields
.field public enable:Z

.field public id:I

.field public resId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->enable:Z

    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->resId:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->resId:I

    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->enable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    :cond_12
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
