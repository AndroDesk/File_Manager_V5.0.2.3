.class Ljcifs/UniAddress$Sem;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sem"
.end annotation


# instance fields
.field public count:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/UniAddress$Sem;->count:I

    .line 6
    return-void
.end method
