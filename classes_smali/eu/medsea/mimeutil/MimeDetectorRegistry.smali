.class Leu/medsea/mimeutil/MimeDetectorRegistry;
.super Ljava/lang/Object;
.source "MimeUtil2.java"


# static fields
.field public static synthetic class$0:Ljava/lang/Class;

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

.field private mimeDetectors:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeDetectorRegistry;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/mimeutil/MimeDetectorRegistry;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/mimeutil/MimeDetectorRegistry;->class$0:Ljava/lang/Class;

    .line 9
    goto :goto_14

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 20
    throw v1

    .line 21
    :cond_14
    :goto_14
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Leu/medsea/mimeutil/TextMimeDetector;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/TextMimeDetector;-><init>(I)V

    .line 10
    iput-object v0, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    .line 14
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 17
    iput-object v0, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 9
    return-object p1
.end method

.method public getMimeTypes(Ljava/io/File;)Ljava/util/Collection;
    .registers 7

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :try_start_5
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 17
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/io/File;)Ljava/util/Collection;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_15} :catch_15

    .line 18
    :catch_15
    :cond_15
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-object v0

    .line 19
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 20
    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/io/File;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_33} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_1f

    :catch_34
    move-exception v2

    .line 21
    sget-object v3, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 7

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :try_start_5
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 24
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_15} :catch_15

    .line 25
    :catch_15
    :cond_15
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-object v0

    .line 26
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 27
    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_33} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_1f

    :catch_34
    move-exception v2

    .line 28
    sget-object v3, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;
    .registers 7

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :try_start_5
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 10
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_15} :catch_15

    .line 11
    :catch_15
    :cond_15
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-object v0

    .line 12
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 13
    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_33} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_1f

    :catch_34
    move-exception v2

    .line 14
    sget-object v3, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;
    .registers 7

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :try_start_5
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 31
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_15} :catch_15

    .line 32
    :catch_15
    :cond_15
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-object v0

    .line 33
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 34
    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_33} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_1f

    :catch_34
    move-exception v2

    .line 35
    sget-object v3, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public getMimeTypes([B)Ljava/util/Collection;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_5
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->TextMimeDetector:Leu/medsea/mimeutil/TextMimeDetector;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes([B)Ljava/util/Collection;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_15} :catch_15

    .line 4
    :catch_15
    :cond_15
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-object v0

    .line 5
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 6
    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypes([B)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_33} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_1f

    :catch_34
    move-exception v2

    .line 7
    sget-object v3, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 6

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_29

    .line 9
    sget-object v0, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    .line 11
    new-instance v1, Ljava/lang/StringBuffer;

    .line 13
    const-string v2, "MimeDetector ["

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    const-string v2, "] will not be registered as a MimeDetector with this name is already registered."

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    .line 35
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 41
    return-object p1

    .line 42
    :cond_29
    :try_start_29
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Leu/medsea/mimeutil/detector/MimeDetector;

    .line 52
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->init()V

    .line 55
    sget-object v1, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    .line 57
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_66

    .line 63
    sget-object v1, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    .line 65
    new-instance v2, Ljava/lang/StringBuffer;

    .line 67
    const-string v3, "Registering MimeDetector with name ["

    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->getName()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v3, "] and description ["

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->getDescription()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v3, "]"

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 103
    :cond_66
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    .line 105
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6b} :catch_6c

    .line 108
    return-object v0

    .line 109
    :catch_6c
    move-exception v0

    .line 110
    sget-object v1, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    .line 112
    new-instance v2, Ljava/lang/StringBuffer;

    .line 114
    const-string v3, "Exception while registering MimeDetector ["

    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string p1, "]."

    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    const/4 p1, 0x0

    .line 135
    return-object p1
.end method

.method public unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_4
    invoke-virtual {p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method

.method public unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2
    sget-object v1, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unregistering MimeDetector ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] from registry."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    :cond_24
    :try_start_24
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/medsea/mimeutil/detector/MimeDetector;

    if-eqz v1, :cond_53

    .line 4
    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->delete()V

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/MimeDetectorRegistry;->mimeDetectors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/medsea/mimeutil/detector/MimeDetector;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_39} :catch_3a

    return-object v1

    :catch_3a
    move-exception v1

    .line 6
    sget-object v2, Leu/medsea/mimeutil/MimeDetectorRegistry;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception while un-registering MimeDetector ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_53
    return-object v0
.end method
