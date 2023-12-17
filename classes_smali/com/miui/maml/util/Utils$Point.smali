.class public Lcom/miui/maml/util/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 6
    iput-wide p3, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 8
    return-void
.end method


# virtual methods
.method public Offset(Lcom/miui/maml/util/Utils$Point;)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 3
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 5
    add-double/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 8
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 10
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 12
    add-double/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 15
    return-void
.end method

.method public minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;
    .registers 9

    .line 1
    new-instance v0, Lcom/miui/maml/util/Utils$Point;

    .line 3
    iget-wide v1, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 5
    iget-wide v3, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 7
    sub-double/2addr v1, v3

    .line 8
    iget-wide v3, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 10
    iget-wide v5, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 12
    sub-double/2addr v3, v5

    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 16
    return-object v0
.end method
