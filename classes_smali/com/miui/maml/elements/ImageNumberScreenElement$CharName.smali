.class Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;
.super Ljava/lang/Object;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ImageNumberScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharName"
.end annotation


# instance fields
.field public ch:C

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/miui/maml/elements/ImageNumberScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->this$0:Lcom/miui/maml/elements/ImageNumberScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-char p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    .line 8
    iput-object p3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    .line 10
    return-void
.end method
