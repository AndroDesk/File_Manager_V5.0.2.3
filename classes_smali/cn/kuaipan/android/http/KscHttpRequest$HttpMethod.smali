.class public final enum Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "KscHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/KscHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field public static final enum POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field public static final synthetic a:[Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 3
    const-string v1, "GET"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 11
    new-instance v1, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 13
    const-string v3, "POST"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 24
    aput-object v0, v3, v2

    .line 26
    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->a:[Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    .registers 2

    .line 1
    const-class v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 9
    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    .registers 1

    .line 1
    sget-object v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->a:[Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 3
    invoke-virtual {v0}, [Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 9
    return-object v0
.end method
