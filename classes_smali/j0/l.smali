.class public final Lj0/l;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# instance fields
.field public final a:I

.field public final b:[Lj0/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I[Lj0/m;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj0/l;->a:I

    iput-object p2, p0, Lj0/l;->b:[Lj0/m;

    return-void
.end method
