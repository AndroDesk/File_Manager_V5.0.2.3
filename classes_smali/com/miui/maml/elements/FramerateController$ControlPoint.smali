.class public Lcom/miui/maml/elements/FramerateController$ControlPoint;
.super Ljava/lang/Object;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/FramerateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlPoint"
.end annotation


# instance fields
.field public mFramerate:I

.field public mTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "time"

    .line 6
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J

    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 12
    const-string v0, "frameRate"

    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    .line 21
    return-void
.end method
