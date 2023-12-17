.class public Lcom/miui/maml/elements/CurveScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "CurveScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Curve"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 3

    return-void
.end method
