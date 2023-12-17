.class public final Lm0/c;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/c$e;,
        Lm0/c$d;,
        Lm0/c$a;,
        Lm0/c$c;,
        Lm0/c$b;,
        Lm0/c$f;
    }
.end annotation


# instance fields
.field public final a:Lm0/c$e;


# direct methods
.method public constructor <init>(Lm0/c$e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm0/c;->a:Lm0/c$e;

    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/c;->a:Lm0/c$e;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
