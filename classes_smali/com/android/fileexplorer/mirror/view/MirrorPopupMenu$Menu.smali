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
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->enable:Z

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->resId:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 7
    iput p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->resId:I

    .line 8
    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->enable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1d

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 21
    iget v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 23
    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 25
    if-ne v2, p1, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v0, v1

    .line 29
    :goto_1c
    return v0

    .line 30
    :cond_1d
    :goto_1d
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method
