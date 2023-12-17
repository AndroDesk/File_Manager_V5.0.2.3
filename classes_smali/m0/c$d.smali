.class public final Lm0/c$d;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Lm0/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/view/ContentInfo;


# direct methods
.method public constructor <init>(Landroid/view/ContentInfo;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Lm0/c$d;->a:Landroid/view/ContentInfo;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/c$d;->a:Landroid/view/ContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/c$d;->a:Landroid/view/ContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/ContentInfo;->getFlags()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()Landroid/view/ContentInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/c$d;->a:Landroid/view/ContentInfo;

    .line 3
    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/c$d;->a:Landroid/view/ContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/ContentInfo;->getSource()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ContentInfoCompat{"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm0/c$d;->a:Landroid/view/ContentInfo;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "}"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
