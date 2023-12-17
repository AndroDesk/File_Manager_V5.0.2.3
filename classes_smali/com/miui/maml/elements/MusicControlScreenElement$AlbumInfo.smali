.class Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumInfo"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    :cond_6
    if-eqz p2, :cond_c

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    :cond_c
    if-eqz p3, :cond_12

    .line 15
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    move-result-object p3

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    .line 21
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2d

    .line 27
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    .line 29
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2d

    .line 35
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    .line 37
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    .line 47
    :goto_2e
    if-eqz v0, :cond_36

    .line 49
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    .line 55
    :cond_36
    return v0
.end method
