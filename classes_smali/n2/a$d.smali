.class public final Ln2/a$d;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Ll2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll2/c<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    new-instance v0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    .line 5
    invoke-direct {v0, p1}, Lio/reactivex/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method
