.class public final Lw2/a$g;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Lio/reactivex/internal/schedulers/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/b;

    .line 3
    invoke-direct {v0}, Lio/reactivex/internal/schedulers/b;-><init>()V

    .line 6
    sput-object v0, Lw2/a$g;->a:Lio/reactivex/internal/schedulers/b;

    .line 8
    return-void
.end method
