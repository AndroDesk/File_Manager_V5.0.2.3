.class public final Lw2/a$d;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Ls2/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ls2/a;

    .line 3
    invoke-direct {v0}, Ls2/a;-><init>()V

    .line 6
    sput-object v0, Lw2/a$d;->a:Ls2/a;

    .line 8
    return-void
.end method
