.class public Lcom/miui/maml/util/ConfigFile$Gadget;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/ConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gadget"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/miui/maml/util/ConfigFile$Gadget;->x:I

    .line 8
    iput p3, p0, Lcom/miui/maml/util/ConfigFile$Gadget;->y:I

    .line 10
    return-void
.end method
