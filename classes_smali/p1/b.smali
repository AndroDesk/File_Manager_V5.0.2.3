.class public final Lp1/b;
.super Ljava/lang/Object;
.source "FileTranceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/b$a;
    }
.end annotation


# instance fields
.field public final a:Lm1/c;

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm1/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/b;->a:Lm1/c;

    return-void
.end method
