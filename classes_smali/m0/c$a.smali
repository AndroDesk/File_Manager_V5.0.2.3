.class public final Lm0/c$a;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Lm0/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ContentInfo$Builder;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/ContentInfo$Builder;

    .line 6
    invoke-direct {v0, p1, p2}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 9
    iput-object v0, p0, Lm0/c$a;->a:Landroid/view/ContentInfo$Builder;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/c$a;->a:Landroid/view/ContentInfo$Builder;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    .line 6
    return-void
.end method

.method public final b(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/c$a;->a:Landroid/view/ContentInfo$Builder;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    .line 6
    return-void
.end method

.method public final build()Lm0/c;
    .registers 4

    .line 1
    new-instance v0, Lm0/c;

    .line 3
    new-instance v1, Lm0/c$d;

    .line 5
    iget-object v2, p0, Lm0/c$a;->a:Landroid/view/ContentInfo$Builder;

    .line 7
    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Lm0/c$d;-><init>(Landroid/view/ContentInfo;)V

    .line 14
    invoke-direct {v0, v1}, Lm0/c;-><init>(Lm0/c$e;)V

    .line 17
    return-object v0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/c$a;->a:Landroid/view/ContentInfo$Builder;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    .line 6
    return-void
.end method
