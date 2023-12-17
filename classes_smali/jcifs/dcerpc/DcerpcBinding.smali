.class public Ljcifs/dcerpc/DcerpcBinding;
.super Ljava/lang/Object;
.source "DcerpcBinding.java"


# static fields
.field private static INTERFACES:Ljava/util/HashMap;


# instance fields
.field public endpoint:Ljava/lang/String;

.field public major:I

.field public minor:I

.field public options:Ljava/util/HashMap;

.field public proto:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public uuid:Ljcifs/dcerpc/UUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 8
    invoke-static {}, Ljcifs/dcerpc/msrpc/srvsvc;->getSyntax()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "srvsvc"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 19
    invoke-static {}, Ljcifs/dcerpc/msrpc/lsarpc;->getSyntax()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "lsarpc"

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 30
    invoke-static {}, Ljcifs/dcerpc/msrpc/samr;->getSyntax()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "samr"

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Ljcifs/dcerpc/msrpc/netdfs;->getSyntax()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    const-string v2, "netdfs"

    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 9
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    .line 11
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static addInterface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method


# virtual methods
.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-string v0, "endpoint"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 11
    return-object p1

    .line 12
    :cond_b
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 1
    const-string v0, "endpoint"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_72

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 19
    const-string p2, "\\pipe\\"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_5c

    .line 27
    sget-object p1, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 29
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 31
    const/4 v0, 0x6

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/String;

    .line 42
    if-eqz p1, :cond_5c

    .line 44
    const/16 p2, 0x3a

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 49
    move-result p2

    .line 50
    const/16 v0, 0x2e

    .line 52
    add-int/lit8 v1, p2, 0x1

    .line 54
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 57
    move-result v0

    .line 58
    new-instance v2, Ljcifs/dcerpc/UUID;

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-direct {v2, p2}, Ljcifs/dcerpc/UUID;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object v2, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    .line 70
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    move-result p2

    .line 78
    iput p2, p0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    move-result p1

    .line 90
    iput p1, p0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    .line 92
    return-void

    .line 93
    :cond_5c
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    const-string v0, "Bad endpoint: "

    .line 99
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-direct {p1, p2}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p1

    .line 115
    :cond_72
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 117
    if-nez v0, :cond_7d

    .line 119
    new-instance v0, Ljava/util/HashMap;

    .line 121
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 126
    :cond_7d
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 128
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, ":"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "["

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 38
    if-eqz v1, :cond_5e

    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 48
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_36

    .line 54
    goto :goto_5e

    .line 55
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v0, ","

    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, "="

    .line 84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_2f

    .line 95
    :cond_5e
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v0, "]"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method
