.class public final Lj0/m;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lj0/m;->a:Landroid/net/Uri;

    iput p2, p0, Lj0/m;->b:I

    iput p3, p0, Lj0/m;->c:I

    iput-boolean p4, p0, Lj0/m;->d:Z

    iput p5, p0, Lj0/m;->e:I

    return-void
.end method
