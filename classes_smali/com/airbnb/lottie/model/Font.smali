.class public Lcom/airbnb/lottie/model/Font;
.super Ljava/lang/Object;
.source "Font.java"


# instance fields
.field private final ascent:F

.field private final family:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    iput p4, p0, Lcom/airbnb/lottie/model/Font;->ascent:F

    return-void
.end method


# virtual methods
.method public getAscent()F
    .registers 2

    iget v0, p0, Lcom/airbnb/lottie/model/Font;->ascent:F

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    return-object v0
.end method