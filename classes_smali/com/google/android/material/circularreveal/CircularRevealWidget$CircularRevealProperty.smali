.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;

    .line 3
    const-string v1, "circularReveal"

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    .line 10
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 3
    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    .line 2
    invoke-interface {p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
