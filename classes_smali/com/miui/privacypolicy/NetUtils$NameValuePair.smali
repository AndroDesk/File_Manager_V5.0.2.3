.class public Lcom/miui/privacypolicy/NetUtils$NameValuePair;
.super Ljava/lang/Object;
.source "NetUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacypolicy/NetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameValuePair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/privacypolicy/NetUtils$NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/privacypolicy/NetUtils$NameValuePair;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/privacypolicy/NetUtils$NameValuePair;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/miui/privacypolicy/NetUtils$NameValuePair;)I
    .registers 3

    iget-object v0, p0, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/miui/privacypolicy/NetUtils$NameValuePair;

    invoke-virtual {p0, p1}, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->compareTo(Lcom/miui/privacypolicy/NetUtils$NameValuePair;)I

    move-result p1

    return p1
.end method
